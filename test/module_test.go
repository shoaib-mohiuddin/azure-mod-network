package test

import (
	"fmt"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
 	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
)

func Test_Network(t *testing.T) {
	t.Parallel()

	uniqueId := random.UniqueId()
	nameNetworking := fmt.Sprintf("test-azure-mod-network-%s", uniqueId)

 	terraformDirNetworking := test_structure.CopyTerraformFolderToTemp(t, "../", "examples/networking")

	terraformOptionsNetworking := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		MaxRetries:         3,
		TimeBetweenRetries: 60 * time.Second,
		TerraformDir:       terraformDirNetworking,
		Vars: map[string]interface{}{
			"name": nameNetworking,
		},
	})
	defer terraform.Destroy(t, terraformOptionsNetworking)
	terraform.InitAndApply(t, terraformOptionsNetworking)

}

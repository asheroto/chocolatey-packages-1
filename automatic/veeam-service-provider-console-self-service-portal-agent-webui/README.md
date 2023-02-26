# <img src="https://cdn.jsdelivr.net/gh/mkevenaar/chocolatey-packages@bc660485c002ee54e0bfab7d52c23c50f7323ba3/icons/veeam-service-provider-console-self-service-portal-agent-webui.png" width="48" height="48"/> [veeam-service-provider-console-self-service-portal-agent-webui](https://community.chocolatey.org/packages/veeam-service-provider-console-self-service-portal-agent-webui)

Exit when reboot detected

When installing / upgrading these packages, I would like to advise you to enable this feature `choco feature enable -n=exitOnRebootDetected`

## Veeam Service Provider Console Self-Service Portal APIs for Veeam Agents

In _Veeam Service Provider Console_, you can restore files and folders to their initial location or download restored data to your computer. When you perform a file-level restore, Veeam Service Provider Console displays the backup content in the **file-level restore portal**. You can browse the guest OS files and folders, restore them to original location and overwrite or keep original objects or download ZIP archive with restored objects to your computer. When you restore guest OS files and folders, Veeam Service Provider Console connects to the Veeam backup agent installed on remote computer which performs the restore process.

### Package Parameters

To have choco remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

This package accepts a lot of parameters. Some of them are required the installation. For the full list of parameters, please have a look at the [documentation](https://github.com/mkevenaar/chocolatey-packages/blob/master/automatic/veeam-service-provider-console-self-service-portal-agent-webui/PARAMETERS.md)

#### Required parameters

* `/vacFLRWebAPIHostName`
* `/vacFLRWebAPIUserName`
* `/vacFLRWebAPIPassword`

<!-- PARAMETERS.md -->
**Please Note**: This is an automatically updated package. If you find it is
out of date by more than a day or two, please contact the maintainer(s) and
let them know the package is no longer updating correctly.
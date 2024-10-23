# 检查计算机的安全通道状态
$secureChannelStatus = Test-ComputerSecureChannel

# 如果安全通道状态为 False，进行修复
if ($secureChannelStatus -eq $false) {
    Write-Host "SecureChannel is broken. Attempting to repair..."
    Test-ComputerSecureChannel -Repair -Credential "kfmic.local\"
}
else {
    Write-Host "SecureChannel is OK."
}

# 暂停，防止窗口直接关闭
#Read-Host -Prompt "Press Enter to exit"
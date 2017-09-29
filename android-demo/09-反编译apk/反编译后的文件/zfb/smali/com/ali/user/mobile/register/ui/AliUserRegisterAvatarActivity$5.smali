.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v0, v3, v2, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$10(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 453
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    invoke-static {v0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->sd_card_unavailable:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

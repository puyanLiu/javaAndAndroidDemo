.class Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;
.super Ljava/lang/Object;
.source "EmailRegisterH5Plugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->email:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->access$0(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$4;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 170
    return-void
.end method

.class Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;
.super Ljava/lang/Object;
.source "EmailRegisterH5Plugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->goRegister()V

    .line 160
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$3;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 161
    return-void
.end method

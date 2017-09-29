.class Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;
.super Ljava/lang/Object;
.source "EmailRegisterH5Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    .line 132
    return-void
.end method

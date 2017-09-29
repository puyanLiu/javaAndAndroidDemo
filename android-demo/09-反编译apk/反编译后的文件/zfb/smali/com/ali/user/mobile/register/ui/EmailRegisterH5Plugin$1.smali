.class Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;
.super Ljava/lang/Object;
.source "EmailRegisterH5Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;->a:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;->this$0:Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/EmailRegisterH5Plugin;->doEmailRegister(Ljava/lang/String;)V

    .line 74
    return-void
.end method

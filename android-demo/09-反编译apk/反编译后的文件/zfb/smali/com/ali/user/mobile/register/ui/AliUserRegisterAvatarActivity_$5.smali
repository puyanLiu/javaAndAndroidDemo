.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "AliUserRegisterAvatarActivity_.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p5, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->val$mobile:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->val$mobile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

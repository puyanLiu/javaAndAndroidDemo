.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$3;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "AliUserLoginSetLoginPasswordActivity_.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    invoke-direct {p0, p2, p3, p4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;->access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

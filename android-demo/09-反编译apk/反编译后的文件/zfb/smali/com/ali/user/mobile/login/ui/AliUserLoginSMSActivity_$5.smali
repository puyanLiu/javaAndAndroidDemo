.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "AliUserLoginSMSActivity_.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

.field final synthetic val$ackCode:Ljava/lang/String;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iput-object p5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->val$mobile:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->val$ackCode:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->val$mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;->val$ackCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->access$401(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

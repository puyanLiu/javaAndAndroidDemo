.class final Lcom/alipay/mobile/security/gesture/ui/ax;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ax;->b:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;

    iput-boolean p4, p0, Lcom/alipay/mobile/security/gesture/ui/ax;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ax;->b:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/ax;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->c(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

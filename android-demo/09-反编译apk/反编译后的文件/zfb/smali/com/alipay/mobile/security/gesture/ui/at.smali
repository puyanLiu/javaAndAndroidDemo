.class final Lcom/alipay/mobile/security/gesture/ui/at;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/at;->d:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;

    iput-object p4, p0, Lcom/alipay/mobile/security/gesture/ui/at;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/security/gesture/ui/at;->b:Z

    iput-boolean p6, p0, Lcom/alipay/mobile/security/gesture/ui/at;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/at;->d:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/at;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/at;->b:Z

    iget-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/at;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;ZZ)V
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

.class final Lcom/alipay/mobile/security/gesture/ui/k;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/k;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;

    iput-object p4, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/k;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;)V
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

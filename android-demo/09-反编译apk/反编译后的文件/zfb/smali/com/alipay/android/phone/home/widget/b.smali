.class final Lcom/alipay/android/phone/home/widget/b;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "HomeWidgetGroupLayout_.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/b;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->access$001(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

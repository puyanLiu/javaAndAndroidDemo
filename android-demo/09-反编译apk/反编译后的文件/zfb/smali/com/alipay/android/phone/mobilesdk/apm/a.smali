.class final Lcom/alipay/android/phone/mobilesdk/apm/a;
.super Landroid/content/BroadcastReceiver;
.source "APMAgentImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/a;->a:Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c()V

    .line 57
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a()Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b(Landroid/os/Looper;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/a;->a:Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->stopAnrWatch()V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/a;->a:Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->stopMemoryWatch()V

    .line 62
    return-void
.end method

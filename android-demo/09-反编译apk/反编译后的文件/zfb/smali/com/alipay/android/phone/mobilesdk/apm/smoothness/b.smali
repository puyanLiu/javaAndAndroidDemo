.class final Lcom/alipay/android/phone/mobilesdk/apm/smoothness/b;
.super Ljava/lang/Object;
.source "ChoreographerProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    iget-object v1, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 169
    return-void
.end method

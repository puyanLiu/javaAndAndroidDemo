.class Lcom/fido/android/framework/agent/FIDOSDK$1$1;
.super Landroid/os/Handler;
.source "FIDOSDK.java"


# instance fields
.field final synthetic this$1:Lcom/fido/android/framework/agent/FIDOSDK$1;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/FIDOSDK$1;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fido/android/framework/agent/FIDOSDK$1$1;->this$1:Lcom/fido/android/framework/agent/FIDOSDK$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$1$1;->this$1:Lcom/fido/android/framework/agent/FIDOSDK$1;

    iget-object v0, v0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v0}, Lcom/fido/android/framework/agent/FIDOSDK;->access$100(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/RequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/RequestParams;->getConnectedHandler()Landroid/os/Handler;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 43
    return-void
.end method

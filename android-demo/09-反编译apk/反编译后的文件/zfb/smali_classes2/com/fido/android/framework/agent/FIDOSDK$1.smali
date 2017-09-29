.class Lcom/fido/android/framework/agent/FIDOSDK$1;
.super Ljava/lang/Object;
.source "FIDOSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/fido/android/framework/agent/FIDOSDK;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/FIDOSDK;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    new-instance v1, Lcom/fido/android/framework/agent/FIDOSDK$1$1;

    invoke-direct {v1, p0}, Lcom/fido/android/framework/agent/FIDOSDK$1$1;-><init>(Lcom/fido/android/framework/agent/FIDOSDK$1;)V

    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$002(Lcom/fido/android/framework/agent/FIDOSDK;Landroid/os/Handler;)Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    iget-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$400(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    iget-object v2, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v2}, Lcom/fido/android/framework/agent/FIDOSDK;->access$300(Lcom/fido/android/framework/agent/FIDOSDK;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v3}, Lcom/fido/android/framework/agent/FIDOSDK;->access$000(Lcom/fido/android/framework/agent/FIDOSDK;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fido/android/framework/agent/Fido;->init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$202(Lcom/fido/android/framework/agent/FIDOSDK;Lcom/fido/android/framework/agent/api/ResultType;)Lcom/fido/android/framework/agent/api/ResultType;

    .line 47
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v0}, Lcom/fido/android/framework/agent/FIDOSDK;->access$200(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v0}, Lcom/fido/android/framework/agent/FIDOSDK;->access$000(Lcom/fido/android/framework/agent/FIDOSDK;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$1;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$200(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 51
    return-void
.end method

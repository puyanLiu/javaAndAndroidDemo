.class Lcom/fido/android/framework/agent/Fido$1;
.super Landroid/os/Handler;
.source "Fido.java"


# instance fields
.field final synthetic this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/Fido;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido;->access$1200(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$1;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido;->access$1200(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 594
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

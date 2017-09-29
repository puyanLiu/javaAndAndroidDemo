.class Lorg/android/agoo/service/AgooWakeup$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private volatile a:Lorg/android/agoo/service/IMessageService;

.field final synthetic this$0:Lorg/android/agoo/service/AgooWakeup$1;


# direct methods
.method constructor <init>(Lorg/android/agoo/service/AgooWakeup$1;)V
    .locals 1

    iput-object p1, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->this$0:Lorg/android/agoo/service/AgooWakeup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->a:Lorg/android/agoo/service/IMessageService;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "messageConnected pack["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/android/agoo/service/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/IMessageService;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->a:Lorg/android/agoo/service/IMessageService;

    iget-object v0, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->a:Lorg/android/agoo/service/IMessageService;

    invoke-interface {v0}, Lorg/android/agoo/service/IMessageService;->probe()V

    iget-object v0, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->this$0:Lorg/android/agoo/service/AgooWakeup$1;

    iget-object v0, v0, Lorg/android/agoo/service/AgooWakeup$1;->val$context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/service/AgooWakeup$1$1;->this$0:Lorg/android/agoo/service/AgooWakeup$1;

    iget-object v0, v0, Lorg/android/agoo/service/AgooWakeup$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "messageDisconnected pack["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

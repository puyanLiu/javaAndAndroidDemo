.class Lmtopsdk/mtop/deviceid/DeviceIDManager$1;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iput-object p2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-static {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$002(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-static {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$100(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$002(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-static {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-static {v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->registerDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    .line 82
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-static {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

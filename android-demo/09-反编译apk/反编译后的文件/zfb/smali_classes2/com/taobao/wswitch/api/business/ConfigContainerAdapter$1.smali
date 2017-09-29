.class Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;
.super Landroid/os/AsyncTask;
.source "ConfigContainerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;->this$0:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->access$000()Lcom/taobao/wswitch/api/service/IConfigCenterService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->access$100()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-static {v0, v1}, Lcom/taobao/android/service/Services;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-static {v0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->access$002(Lcom/taobao/wswitch/api/service/IConfigCenterService;)Lcom/taobao/wswitch/api/service/IConfigCenterService;

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

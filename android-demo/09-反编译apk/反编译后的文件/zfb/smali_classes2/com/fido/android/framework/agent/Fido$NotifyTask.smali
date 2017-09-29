.class Lcom/fido/android/framework/agent/Fido$NotifyTask;
.super Landroid/os/AsyncTask;
.source "Fido.java"


# instance fields
.field callBack:Lcom/fido/android/framework/agent/ProcessCallbacks;

.field final synthetic this$0:Lcom/fido/android/framework/agent/Fido;


# direct methods
.method private constructor <init>(Lcom/fido/android/framework/agent/Fido;)V
    .locals 1

    .prologue
    .line 524
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->callBack:Lcom/fido/android/framework/agent/ProcessCallbacks;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/Fido$NotifyTask;-><init>(Lcom/fido/android/framework/agent/Fido;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 530
    .line 531
    array-length v1, p1

    if-lez v1, :cond_1

    .line 532
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 533
    :goto_0
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 534
    aget-object v0, p1, v2

    check-cast v0, Lcom/fido/android/framework/agent/ProcessCallbacks;

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->callBack:Lcom/fido/android/framework/agent/ProcessCallbacks;

    .line 537
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 538
    new-instance v0, Lcom/fido/android/framework/agent/api/NotifyResultIn;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/NotifyResultIn;-><init>()V

    .line 539
    iput-object v1, v0, Lcom/fido/android/framework/agent/api/NotifyResultIn;->regId:Ljava/lang/String;

    .line 540
    new-instance v1, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v1}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    .line 541
    sget-object v3, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->NotifyResult:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    .line 542
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, v1, Lcom/fido/android/framework/agent/api/AgentAPI;->In:Lcom/google/gson/JsonObject;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->this$0:Lcom/fido/android/framework/agent/Fido;

    invoke-static {v1}, Lcom/fido/android/framework/agent/Fido;->access$1100(Lcom/fido/android/framework/agent/Fido;)Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    .line 547
    new-instance v2, Lcom/fido/android/framework/agent/Fido$Response;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/Fido$Response;->status()Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 549
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/Fido$NotifyTask;->doInBackground([Ljava/lang/Object;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/fido/android/framework/agent/api/ResultType;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->callBack:Lcom/fido/android/framework/agent/ProcessCallbacks;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$NotifyTask;->callBack:Lcom/fido/android/framework/agent/ProcessCallbacks;

    invoke-interface {v0, p1}, Lcom/fido/android/framework/agent/ProcessCallbacks;->NotifyResponseCompleted(Lcom/fido/android/framework/agent/api/ResultType;)V

    .line 557
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/Fido$NotifyTask;->onPostExecute(Lcom/fido/android/framework/agent/api/ResultType;)V

    return-void
.end method

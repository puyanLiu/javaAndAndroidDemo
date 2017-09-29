.class Lcom/fido/android/framework/agent/FIDOSDK$processAsync;
.super Landroid/os/AsyncTask;
.source "FIDOSDK.java"


# instance fields
.field private calbackFunction:Ljava/lang/String;

.field final synthetic this$0:Lcom/fido/android/framework/agent/FIDOSDK;


# direct methods
.method private constructor <init>(Lcom/fido/android/framework/agent/FIDOSDK;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->calbackFunction:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fido/android/framework/agent/FIDOSDK;Lcom/fido/android/framework/agent/FIDOSDK$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;-><init>(Lcom/fido/android/framework/agent/FIDOSDK;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 85
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->calbackFunction:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 89
    const-class v2, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    .line 90
    iget-object v2, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v2}, Lcom/fido/android/framework/agent/FIDOSDK;->access$100(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/RequestParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/RequestParams;->getOrigin()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Origin:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$400(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fido/android/framework/agent/Fido;->processJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v0}, Lcom/fido/android/framework/agent/FIDOSDK;->access$600(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/IJSEvaluator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->calbackFunction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->calbackFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/fido/android/framework/agent/FIDOSDK$processAsync;->this$0:Lcom/fido/android/framework/agent/FIDOSDK;

    invoke-static {v1}, Lcom/fido/android/framework/agent/FIDOSDK;->access$600(Lcom/fido/android/framework/agent/FIDOSDK;)Lcom/fido/android/framework/agent/IJSEvaluator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fido/android/framework/agent/IJSEvaluator;->evaluate(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

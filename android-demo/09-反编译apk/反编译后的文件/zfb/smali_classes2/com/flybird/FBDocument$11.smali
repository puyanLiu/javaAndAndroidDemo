.class Lcom/flybird/FBDocument$11;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$11;->a:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$11;->b:I

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flybird/FBDocument$11;)Lcom/flybird/FBDocument;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/flybird/FBDocument$11;->a:Lcom/flybird/FBDocument;

    return-object v0
.end method


# virtual methods
.method public onRpcResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 552
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 554
    :try_start_0
    const-string/jumbo v0, "success"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 555
    if-eqz p1, :cond_0

    .line 556
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/flybird/FBDocument$11;->a:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/flybird/FBDocument$11$1;

    iget v3, p0, Lcom/flybird/FBDocument$11;->b:I

    invoke-direct {v2, p0, v3, v1}, Lcom/flybird/FBDocument$11$1;-><init>(Lcom/flybird/FBDocument$11;ILorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 569
    return-void

    .line 558
    :cond_0
    :try_start_1
    const-string/jumbo v0, "reason"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

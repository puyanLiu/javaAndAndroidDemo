.class public Lcom/flybird/FBClickCallBack;
.super Ljava/lang/Object;
.source "FBClickCallBack.java"

# interfaces
.implements Lcom/alipay/android/app/template/ITemplateClickCallback;


# instance fields
.field private a:I

.field private b:Lcom/flybird/FBDocument;


# direct methods
.method public constructor <init>(ILcom/flybird/FBDocument;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBClickCallBack;->a:I

    .line 14
    iput p1, p0, Lcom/flybird/FBClickCallBack;->a:I

    .line 15
    iput-object p2, p0, Lcom/flybird/FBClickCallBack;->b:Lcom/flybird/FBDocument;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBClickCallBack;->b:Lcom/flybird/FBDocument;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/flybird/FBClickCallBack;->a:I

    .line 36
    return-void
.end method

.method public onClickCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flybird/FBClickCallBack;->b:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBClickCallBack;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 25
    iget-object v1, p0, Lcom/flybird/FBClickCallBack;->b:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBClickCallBack;->a:I

    invoke-virtual {v1, v2, v0}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

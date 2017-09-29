.class Lcom/flybird/FBDocument$6;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;

.field private final synthetic b:Z

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;ZII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$6;->a:Lcom/flybird/FBDocument;

    iput-boolean p2, p0, Lcom/flybird/FBDocument$6;->b:Z

    iput p3, p0, Lcom/flybird/FBDocument$6;->c:I

    iput p4, p0, Lcom/flybird/FBDocument$6;->d:I

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/flybird/FBDocument$6;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument$6;->c:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 442
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 452
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 446
    :try_start_0
    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    iget-object v1, p0, Lcom/flybird/FBDocument$6;->a:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBDocument$6;->d:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

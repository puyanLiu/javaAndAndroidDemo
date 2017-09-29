.class Lcom/flybird/FBDocument$12;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$12;->a:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$12;->b:I

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 610
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 612
    :try_start_0
    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    iget-object v1, p0, Lcom/flybird/FBDocument$12;->a:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBDocument$12;->b:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    .line 616
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

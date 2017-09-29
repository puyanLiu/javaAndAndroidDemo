.class Lcom/flybird/FBDocument$10$1;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument$10;

.field private final synthetic b:I

.field private final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument$10;ILorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$10$1;->a:Lcom/flybird/FBDocument$10;

    iput p2, p0, Lcom/flybird/FBDocument$10$1;->b:I

    iput-object p3, p0, Lcom/flybird/FBDocument$10$1;->c:Lorg/json/JSONObject;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 538
    iget-object v0, p0, Lcom/flybird/FBDocument$10$1;->a:Lcom/flybird/FBDocument$10;

    invoke-static {v0}, Lcom/flybird/FBDocument$10;->a(Lcom/flybird/FBDocument$10;)Lcom/flybird/FBDocument;

    move-result-object v0

    iget v1, p0, Lcom/flybird/FBDocument$10$1;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flybird/FBDocument$10$1;->c:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    .line 539
    return-void
.end method

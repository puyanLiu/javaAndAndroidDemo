.class Lcom/flybird/FBDocument$5;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$5;->a:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$5;->b:I

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/flybird/FBDocument$5;->a:Lcom/flybird/FBDocument;

    iget v1, p0, Lcom/flybird/FBDocument$5;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    .line 415
    return-void
.end method

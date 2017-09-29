.class Lcom/flybird/FBDocumentAssistor$1;
.super Lcom/flybird/CountDownTimer;
.source "FBDocumentAssistor.java"


# instance fields
.field final synthetic a:Lcom/flybird/FBDocumentAssistor;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/flybird/FBDocument;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocumentAssistor;JJZLcom/flybird/FBDocument;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$1;->a:Lcom/flybird/FBDocumentAssistor;

    iput-boolean p6, p0, Lcom/flybird/FBDocumentAssistor$1;->b:Z

    iput-object p7, p0, Lcom/flybird/FBDocumentAssistor$1;->c:Lcom/flybird/FBDocument;

    iput p8, p0, Lcom/flybird/FBDocumentAssistor$1;->d:I

    .line 115
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/flybird/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->a:Lcom/flybird/FBDocumentAssistor;

    invoke-static {v0}, Lcom/flybird/FBDocumentAssistor;->a(Lcom/flybird/FBDocumentAssistor;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->a:Lcom/flybird/FBDocumentAssistor;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$1;->c:Lcom/flybird/FBDocument;

    iget v1, v1, Lcom/flybird/FBDocument;->mCore:I

    iget v2, p0, Lcom/flybird/FBDocumentAssistor$1;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocumentAssistor;->nativeOnTimer(II)I

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->a:Lcom/flybird/FBDocumentAssistor;

    invoke-static {v0}, Lcom/flybird/FBDocumentAssistor;->a(Lcom/flybird/FBDocumentAssistor;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/flybird/FBDocumentAssistor$1;->b:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$1;->a:Lcom/flybird/FBDocumentAssistor;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$1;->c:Lcom/flybird/FBDocument;

    iget v1, v1, Lcom/flybird/FBDocument;->mCore:I

    iget v2, p0, Lcom/flybird/FBDocumentAssistor$1;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocumentAssistor;->nativeOnTimer(II)I

    goto :goto_0
.end method

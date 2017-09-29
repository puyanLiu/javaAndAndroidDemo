.class Lcom/flybird/FBDocumentAssistor$4;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocumentAssistor;

.field private final synthetic b:Lcom/flybird/FBDocument;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:F

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:I

.field private final synthetic j:Z

.field private final synthetic k:F

.field private final synthetic l:F

.field private final synthetic m:F

.field private final synthetic n:Z

.field private final synthetic o:[F

.field private final synthetic p:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[FLandroid/os/ConditionVariable;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$4;->a:Lcom/flybird/FBDocumentAssistor;

    iput-object p2, p0, Lcom/flybird/FBDocumentAssistor$4;->b:Lcom/flybird/FBDocument;

    iput-object p3, p0, Lcom/flybird/FBDocumentAssistor$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/flybird/FBDocumentAssistor$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/flybird/FBDocumentAssistor$4;->e:Ljava/lang/String;

    iput p6, p0, Lcom/flybird/FBDocumentAssistor$4;->f:F

    iput-object p7, p0, Lcom/flybird/FBDocumentAssistor$4;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/flybird/FBDocumentAssistor$4;->h:Ljava/lang/String;

    iput p9, p0, Lcom/flybird/FBDocumentAssistor$4;->i:I

    iput-boolean p10, p0, Lcom/flybird/FBDocumentAssistor$4;->j:Z

    iput p11, p0, Lcom/flybird/FBDocumentAssistor$4;->k:F

    iput p12, p0, Lcom/flybird/FBDocumentAssistor$4;->l:F

    iput p13, p0, Lcom/flybird/FBDocumentAssistor$4;->m:F

    iput-boolean p14, p0, Lcom/flybird/FBDocumentAssistor$4;->n:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/flybird/FBDocumentAssistor$4;->o:[F

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/flybird/FBDocumentAssistor$4;->p:Landroid/os/ConditionVariable;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 257
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$4;->a:Lcom/flybird/FBDocumentAssistor;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$4;->b:Lcom/flybird/FBDocument;

    iget-object v2, p0, Lcom/flybird/FBDocumentAssistor$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/flybird/FBDocumentAssistor$4;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/flybird/FBDocumentAssistor$4;->e:Ljava/lang/String;

    iget v5, p0, Lcom/flybird/FBDocumentAssistor$4;->f:F

    iget-object v6, p0, Lcom/flybird/FBDocumentAssistor$4;->g:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lcom/flybird/FBDocumentAssistor$4;->h:Ljava/lang/String;

    iget v8, p0, Lcom/flybird/FBDocumentAssistor$4;->i:I

    iget-boolean v9, p0, Lcom/flybird/FBDocumentAssistor$4;->j:Z

    iget v10, p0, Lcom/flybird/FBDocumentAssistor$4;->k:F

    iget v11, p0, Lcom/flybird/FBDocumentAssistor$4;->l:F

    iget v12, p0, Lcom/flybird/FBDocumentAssistor$4;->m:F

    iget-boolean v13, p0, Lcom/flybird/FBDocumentAssistor$4;->n:Z

    iget-object v14, p0, Lcom/flybird/FBDocumentAssistor$4;->o:[F

    .line 257
    invoke-virtual/range {v0 .. v14}, Lcom/flybird/FBDocumentAssistor;->calcTextSizeBlock(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[F)V

    .line 260
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$4;->p:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 262
    return-void
.end method

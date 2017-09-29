.class Lcom/flybird/FBDocumentAssistor$2;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocumentAssistor;

.field private final synthetic b:Lcom/flybird/FBDocument;

.field private final synthetic c:I

.field private final synthetic d:Z

.field private final synthetic e:I

.field private final synthetic f:[Lcom/flybird/CountDownTimer;

.field private final synthetic g:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$2;->a:Lcom/flybird/FBDocumentAssistor;

    iput-object p2, p0, Lcom/flybird/FBDocumentAssistor$2;->b:Lcom/flybird/FBDocument;

    iput p3, p0, Lcom/flybird/FBDocumentAssistor$2;->c:I

    iput-boolean p4, p0, Lcom/flybird/FBDocumentAssistor$2;->d:Z

    iput p5, p0, Lcom/flybird/FBDocumentAssistor$2;->e:I

    iput-object p6, p0, Lcom/flybird/FBDocumentAssistor$2;->f:[Lcom/flybird/CountDownTimer;

    iput-object p7, p0, Lcom/flybird/FBDocumentAssistor$2;->g:Landroid/os/ConditionVariable;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$2;->a:Lcom/flybird/FBDocumentAssistor;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$2;->b:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBDocumentAssistor$2;->c:I

    iget-boolean v3, p0, Lcom/flybird/FBDocumentAssistor$2;->d:Z

    iget v4, p0, Lcom/flybird/FBDocumentAssistor$2;->e:I

    iget-object v5, p0, Lcom/flybird/FBDocumentAssistor$2;->f:[Lcom/flybird/CountDownTimer;

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBDocumentAssistor;->a(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V

    .line 151
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$2;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 152
    return-void
.end method

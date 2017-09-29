.class Lcom/flybird/FBDocumentAssistor$3;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocumentAssistor;

.field private final synthetic b:Lcom/flybird/FBDocument;

.field private final synthetic c:Lcom/flybird/CountDownTimer;

.field private final synthetic d:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocumentAssistor;Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocumentAssistor$3;->a:Lcom/flybird/FBDocumentAssistor;

    iput-object p2, p0, Lcom/flybird/FBDocumentAssistor$3;->b:Lcom/flybird/FBDocument;

    iput-object p3, p0, Lcom/flybird/FBDocumentAssistor$3;->c:Lcom/flybird/CountDownTimer;

    iput-object p4, p0, Lcom/flybird/FBDocumentAssistor$3;->d:Landroid/os/ConditionVariable;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$3;->b:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDocumentAssistor$3;->c:Lcom/flybird/CountDownTimer;

    invoke-static {v0, v1}, Lcom/flybird/FBDocumentAssistor;->destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I

    .line 185
    iget-object v0, p0, Lcom/flybird/FBDocumentAssistor$3;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 186
    return-void
.end method

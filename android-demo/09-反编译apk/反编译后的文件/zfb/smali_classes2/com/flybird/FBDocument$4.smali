.class Lcom/flybird/FBDocument$4;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$4;->a:Lcom/flybird/FBDocument;

    iput-object p2, p0, Lcom/flybird/FBDocument$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flybird/FBDocument$4;->c:Landroid/os/ConditionVariable;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/flybird/FBDocument$4;->a:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDocument$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->innerLayout(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/flybird/FBDocument$4;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 371
    return-void
.end method

.class Lcom/flybird/FBDocument$2;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBDocument;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->b(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->b(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->b(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 124
    iget-object v0, p0, Lcom/flybird/FBDocument$2;->a:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->b(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBInput;->a()V

    .line 126
    :cond_0
    return-void
.end method

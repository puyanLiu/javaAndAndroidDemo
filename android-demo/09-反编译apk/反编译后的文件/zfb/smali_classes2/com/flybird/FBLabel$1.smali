.class Lcom/flybird/FBLabel$1;
.super Ljava/lang/Object;
.source "FBLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBLabel;


# direct methods
.method constructor <init>(Lcom/flybird/FBLabel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->a(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    iget-object v0, v0, Lcom/flybird/FBLabel;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->a(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/flybird/FBLabel$1;->a:Lcom/flybird/FBLabel;

    invoke-static {v0}, Lcom/flybird/FBLabel;->a(Lcom/flybird/FBLabel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

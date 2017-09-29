.class Lcom/flybird/FBInput$1;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flybird/FBInput$1;)Lcom/flybird/FBInput;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->a(Lcom/flybird/FBInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->b(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->c(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v1, v0}, Lcom/flybird/FBInput;->a(Lcom/flybird/FBInput;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->b(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/flybird/FBInput$1$1;

    invoke-direct {v2, p0, v0}, Lcom/flybird/FBInput$1$1;-><init>(Lcom/flybird/FBInput$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$1;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->d(Lcom/flybird/FBInput;)V

    .line 108
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

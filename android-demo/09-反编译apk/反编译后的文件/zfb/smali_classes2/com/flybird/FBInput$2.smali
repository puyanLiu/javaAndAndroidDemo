.class Lcom/flybird/FBInput$2;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$2;->a:Lcom/flybird/FBInput;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flybird/FBInput$2;)Lcom/flybird/FBInput;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flybird/FBInput$2;->a:Lcom/flybird/FBInput;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/flybird/FBInput$2;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->a(Lcom/flybird/FBInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/flybird/FBInput$2;->a:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->e(Lcom/flybird/FBInput;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/flybird/FBInput$2$1;

    invoke-direct {v2, p0, v0}, Lcom/flybird/FBInput$2$1;-><init>(Lcom/flybird/FBInput$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_0
    return-void
.end method

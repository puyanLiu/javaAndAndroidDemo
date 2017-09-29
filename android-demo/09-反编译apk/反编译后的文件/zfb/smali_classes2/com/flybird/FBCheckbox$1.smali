.class Lcom/flybird/FBCheckbox$1;
.super Ljava/lang/Object;
.source "FBCheckbox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBCheckbox;


# direct methods
.method constructor <init>(Lcom/flybird/FBCheckbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBCheckbox$1;->a:Lcom/flybird/FBCheckbox;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flybird/FBCheckbox$1;)Lcom/flybird/FBCheckbox;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flybird/FBCheckbox$1;->a:Lcom/flybird/FBCheckbox;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flybird/FBCheckbox$1;->a:Lcom/flybird/FBCheckbox;

    invoke-static {v0}, Lcom/flybird/FBCheckbox;->a(Lcom/flybird/FBCheckbox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/flybird/FBCheckbox$1;->a:Lcom/flybird/FBCheckbox;

    invoke-static {v1}, Lcom/flybird/FBCheckbox;->b(Lcom/flybird/FBCheckbox;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/flybird/FBCheckbox$1$1;

    invoke-direct {v2, p0, v0}, Lcom/flybird/FBCheckbox$1$1;-><init>(Lcom/flybird/FBCheckbox$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_0
    return-void
.end method

.class Lcom/flybird/FBInput$4;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$4;->a:Lcom/flybird/FBInput;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/flybird/FBInput$4;->a:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Lcom/flybird/FBInput;->a()V

    .line 308
    return-void
.end method

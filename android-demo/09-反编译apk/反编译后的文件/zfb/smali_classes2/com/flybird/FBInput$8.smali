.class Lcom/flybird/FBInput$8;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$8;->a:Lcom/flybird/FBInput;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 520
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 521
    return-void
.end method

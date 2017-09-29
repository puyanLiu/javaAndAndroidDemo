.class Lcom/flybird/FBView$3;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBView;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/flybird/FBView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBView$3;->a:Lcom/flybird/FBView;

    iput-boolean p2, p0, Lcom/flybird/FBView$3;->b:Z

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/flybird/FBView$3;->a:Lcom/flybird/FBView;

    iget-object v0, v0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-boolean v0, p0, Lcom/flybird/FBView$3;->b:Z

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/flybird/FBView$3;->a:Lcom/flybird/FBView;

    iget-wide v0, v0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnFocus(J)Z

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView$3;->a:Lcom/flybird/FBView;

    iget-wide v0, v0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnBlur(J)Z

    goto :goto_0
.end method

.class Lcom/flybird/FBView$2;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBView;


# direct methods
.method constructor <init>(Lcom/flybird/FBView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBView$2;->a:Lcom/flybird/FBView;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/flybird/FBView$2;->a:Lcom/flybird/FBView;

    iget-wide v0, v0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnBlur(J)Z

    .line 350
    return-void
.end method

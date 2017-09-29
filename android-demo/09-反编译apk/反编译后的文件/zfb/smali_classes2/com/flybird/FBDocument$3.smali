.class Lcom/flybird/FBDocument$3;
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
    iput-object p1, p0, Lcom/flybird/FBDocument$3;->a:Lcom/flybird/FBDocument;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flybird/FBDocument$3;->a:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->c(Lcom/flybird/FBDocument;)V

    .line 204
    return-void
.end method

.class Lcom/flybird/FBInput$2$1;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput$2;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$2$1;->a:Lcom/flybird/FBInput$2;

    iput-object p2, p0, Lcom/flybird/FBInput$2$1;->b:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/flybird/FBInput$2$1;->a:Lcom/flybird/FBInput$2;

    invoke-static {v0}, Lcom/flybird/FBInput$2;->a(Lcom/flybird/FBInput$2;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$2$1;->a:Lcom/flybird/FBInput$2;

    invoke-static {v0}, Lcom/flybird/FBInput$2;->a(Lcom/flybird/FBInput$2;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-wide v0, v0, Lcom/flybird/FBInput;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBInput$2$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBInput;->nativePlatformOnChange(JLjava/lang/String;)I

    goto :goto_0
.end method

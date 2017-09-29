.class Lcom/flybird/FBInput$1$1;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput$1;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$1$1;->a:Lcom/flybird/FBInput$1;

    iput-object p2, p0, Lcom/flybird/FBInput$1$1;->b:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flybird/FBInput$1$1;->a:Lcom/flybird/FBInput$1;

    invoke-static {v0}, Lcom/flybird/FBInput$1;->a(Lcom/flybird/FBInput$1;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/flybird/FBInput$1$1;->a:Lcom/flybird/FBInput$1;

    invoke-static {v0}, Lcom/flybird/FBInput$1;->a(Lcom/flybird/FBInput$1;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-wide v0, v0, Lcom/flybird/FBInput;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBInput$1$1;->b:Ljava/lang/String;

    const-string/jumbo v3, "/"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flybird/FBInput;->nativePlatformOnInput(JLjava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput$1$1;->a:Lcom/flybird/FBInput$1;

    invoke-static {v0}, Lcom/flybird/FBInput$1;->a(Lcom/flybird/FBInput$1;)Lcom/flybird/FBInput;

    move-result-object v0

    iget-wide v0, v0, Lcom/flybird/FBInput;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBInput$1$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBInput;->nativePlatformOnInput(JLjava/lang/String;)I

    goto :goto_0
.end method

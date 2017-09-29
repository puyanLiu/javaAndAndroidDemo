.class Lcom/flybird/FBCheckbox$1$1;
.super Ljava/lang/Object;
.source "FBCheckbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBCheckbox$1;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBCheckbox$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBCheckbox$1$1;->a:Lcom/flybird/FBCheckbox$1;

    iput-object p2, p0, Lcom/flybird/FBCheckbox$1$1;->b:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flybird/FBCheckbox$1$1;->a:Lcom/flybird/FBCheckbox$1;

    invoke-static {v0}, Lcom/flybird/FBCheckbox$1;->a(Lcom/flybird/FBCheckbox$1;)Lcom/flybird/FBCheckbox;

    move-result-object v0

    iget-wide v0, v0, Lcom/flybird/FBCheckbox;->mNode:J

    iget-object v2, p0, Lcom/flybird/FBCheckbox$1$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flybird/FBCheckbox;->nativePlatformOnChange(JLjava/lang/String;)I

    .line 34
    return-void
.end method

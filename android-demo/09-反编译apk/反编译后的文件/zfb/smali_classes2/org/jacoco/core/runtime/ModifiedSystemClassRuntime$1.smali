.class final Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# instance fields
.field final synthetic val$accessFieldName:Ljava/lang/String;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;->val$className:Ljava/lang/String;

    iput-object p2, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;->val$accessFieldName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;->val$className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;->val$accessFieldName:Ljava/lang/String;

    invoke-static {p5, v0}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->instrument([BLjava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

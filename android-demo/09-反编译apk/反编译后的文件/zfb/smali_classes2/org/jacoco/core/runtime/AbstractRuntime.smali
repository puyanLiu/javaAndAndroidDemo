.class public abstract Lorg/jacoco/core/runtime/AbstractRuntime;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/runtime/IRuntime;


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field protected data:Lorg/jacoco/core/runtime/RuntimeData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jacoco/core/runtime/AbstractRuntime;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRandomId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jacoco/core/runtime/AbstractRuntime;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startup(Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 0

    iput-object p1, p0, Lorg/jacoco/core/runtime/AbstractRuntime;->data:Lorg/jacoco/core/runtime/RuntimeData;

    return-void
.end method

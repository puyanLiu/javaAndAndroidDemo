.class public Lorg/jacoco/core/internal/flow/ClassProbesAdapter;
.super Lorg/objectweb/asm/ClassVisitor;

# interfaces
.implements Lorg/jacoco/core/internal/flow/IProbeIdGenerator;


# static fields
.field private static final a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;


# instance fields
.field private final b:Lorg/jacoco/core/internal/flow/ClassProbesVisitor;

.field private final c:Z

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1Impl;

    invoke-direct {v0}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1Impl;-><init>()V

    sput-object v0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/jacoco/core/internal/flow/ClassProbesVisitor;Z)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->d:I

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->b:Lorg/jacoco/core/internal/flow/ClassProbesVisitor;

    iput-boolean p2, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->c:Z

    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->c:Z

    return v0
.end method

.method static synthetic access$100(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public nextId()I
    .locals 2

    iget v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->d:I

    return v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->e:Ljava/lang/String;

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->b:Lorg/jacoco/core/internal/flow/ClassProbesVisitor;

    iget v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->d:I

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;->visitTotalProbeCount(I)V

    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 9

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->b:Lorg/jacoco/core/internal/flow/ClassProbesVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->a:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    :cond_0
    new-instance v0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;-><init>(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/jacoco/core/internal/flow/MethodProbesVisitor;)V

    return-object v0
.end method

.class public Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;
.super Lorg/jacoco/core/runtime/AbstractRuntime;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jacoco/core/runtime/AbstractRuntime;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v1, 0x1089

    const-string/jumbo v3, "Ljava/lang/Object;"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    return-void
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;
    .locals 1

    const-string/jumbo v0, "$jacocoAccess"

    invoke-static {p0, p1, v0}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;

    move-result-object v0

    return-object v0
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;
    .locals 5

    new-instance v0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;

    invoke-direct {v0, p1, p2}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;

    invoke-direct {v0, v1, p2}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Class %s could not be instrumented."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static instrument([BLjava/lang/String;)[B
    .locals 4

    new-instance v0, Lorg/objectweb/asm/ClassReader;

    invoke-direct {v0, p0}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    new-instance v1, Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/objectweb/asm/ClassWriter;-><init>(Lorg/objectweb/asm/ClassReader;I)V

    new-instance v2, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;

    const/high16 v3, 0x50000

    invoke-direct {v2, v3, v1, p1}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;-><init>(ILorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {v1}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateDataAccessor(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)I
    .locals 4

    const/16 v0, 0xb2

    iget-object v1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->c:Ljava/lang/String;

    const-string/jumbo v3, "Ljava/lang/Object;"

    invoke-virtual {p5, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lorg/jacoco/core/runtime/RuntimeData;->generateAccessCall(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V

    const/4 v0, 0x6

    return v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public startup(Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/jacoco/core/runtime/AbstractRuntime;->startup(Lorg/jacoco/core/runtime/RuntimeData;)V

    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->a:Ljava/lang/Class;

    iget-object v1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

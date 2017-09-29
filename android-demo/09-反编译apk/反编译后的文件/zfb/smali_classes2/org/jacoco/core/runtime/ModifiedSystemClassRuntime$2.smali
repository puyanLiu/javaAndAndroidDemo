.class final Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;
.super Lorg/objectweb/asm/ClassVisitor;


# instance fields
.field final synthetic val$accessFieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;->val$accessFieldName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method


# virtual methods
.method public final visitEnd()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;->cv:Lorg/objectweb/asm/ClassVisitor;

    iget-object v1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;->val$accessFieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->access$000(Lorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V

    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

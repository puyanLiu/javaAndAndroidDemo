.class Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;
.super Lorg/jacoco/core/internal/flow/MethodSanitizer;


# instance fields
.field final synthetic this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

.field final synthetic val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;


# direct methods
.method constructor <init>(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/jacoco/core/internal/flow/MethodProbesVisitor;)V
    .locals 7

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    iput-object p8, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/core/internal/flow/MethodSanitizer;-><init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 6

    invoke-super {p0}, Lorg/jacoco/core/internal/flow/MethodSanitizer;->visitEnd()V

    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->markLabels(Lorg/objectweb/asm/tree/MethodNode;)V

    new-instance v5, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->val$methodProbes:Lorg/jacoco/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-direct {v5, v0, v1}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;-><init>(Lorg/jacoco/core/internal/flow/MethodProbesVisitor;Lorg/jacoco/core/internal/flow/IProbeIdGenerator;)V

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-static {v0}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->access$000(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/commons/AnalyzerAdapter;

    iget-object v1, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->this$0:Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    invoke-static {v1}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;->access$100(Lorg/jacoco/core/internal/flow/ClassProbesAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->access:I

    iget-object v3, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->desc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    invoke-virtual {v5, v0}, Lorg/jacoco/core/internal/flow/MethodProbesAdapter;->setAnalyzer(Lorg/objectweb/asm/commons/AnalyzerAdapter;)V

    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter$1;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    goto :goto_0
.end method

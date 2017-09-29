.class Lorg/jacoco/core/internal/flow/FrameSnapshot;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/internal/flow/IFrame;


# static fields
.field private static final a:Lorg/jacoco/core/internal/flow/FrameSnapshot;


# instance fields
.field private final b:[Ljava/lang/Object;

.field private final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/jacoco/core/internal/flow/FrameSnapshot;

    invoke-direct {v0, v1, v1}, Lorg/jacoco/core/internal/flow/FrameSnapshot;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->a:Lorg/jacoco/core/internal/flow/FrameSnapshot;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->b:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->c:[Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/List;I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static create(Lorg/objectweb/asm/commons/AnalyzerAdapter;I)Lorg/jacoco/core/internal/flow/IFrame;
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->a:Lorg/jacoco/core/internal/flow/FrameSnapshot;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jacoco/core/internal/flow/FrameSnapshot;->a(Ljava/util/List;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/jacoco/core/internal/flow/FrameSnapshot;->a(Ljava/util/List;I)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lorg/jacoco/core/internal/flow/FrameSnapshot;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/internal/flow/FrameSnapshot;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 6

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->b:[Ljava/lang/Object;

    array-length v2, v0

    iget-object v3, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->c:[Ljava/lang/Object;

    array-length v4, v0

    iget-object v5, p0, Lorg/jacoco/core/internal/flow/FrameSnapshot;->c:[Ljava/lang/Object;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

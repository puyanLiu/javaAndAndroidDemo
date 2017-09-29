.class Lorg/objectweb/asm/Handler;
.super Ljava/lang/Object;


# instance fields
.field desc:Ljava/lang/String;

.field end:Lorg/objectweb/asm/Label;

.field handler:Lorg/objectweb/asm/Label;

.field next:Lorg/objectweb/asm/Handler;

.field start:Lorg/objectweb/asm/Label;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static remove(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;
    .locals 4

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    invoke-static {v0, p1, p2}, Lorg/objectweb/asm/Handler;->remove(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    iget-object v0, p0, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->position:I

    iget-object v0, p0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iget v2, v0, Lorg/objectweb/asm/Label;->position:I

    iget v3, p1, Lorg/objectweb/asm/Label;->position:I

    if-nez p2, :cond_2

    const v0, 0x7fffffff

    :goto_1
    if-ge v3, v2, :cond_0

    if-le v0, v1, :cond_0

    if-gt v3, v1, :cond_4

    if-lt v0, v2, :cond_3

    iget-object p0, p0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_0

    :cond_2
    iget v0, p2, Lorg/objectweb/asm/Label;->position:I

    goto :goto_1

    :cond_3
    iput-object p2, p0, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_4
    if-lt v0, v2, :cond_5

    iput-object p1, p0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/objectweb/asm/Handler;

    invoke-direct {v0}, Lorg/objectweb/asm/Handler;-><init>()V

    iput-object p2, v0, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->desc:Ljava/lang/String;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->desc:Ljava/lang/String;

    iget v1, p0, Lorg/objectweb/asm/Handler;->type:I

    iput v1, v0, Lorg/objectweb/asm/Handler;->type:I

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    iput-object p1, p0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_0
.end method

.class public abstract Lcom/android/internal/telephony/Connection$ListenerBase;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQualityChanged(I)V
    .locals 0
    .param p1, "audioQuality"    # I

    .line 131
    return-void
.end method

.method public onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "externalConnection"    # Lcom/android/internal/telephony/Connection;

    .line 145
    return-void
.end method

.method public onCallSubstateChanged(I)V
    .locals 0
    .param p1, "callSubstate"    # I

    .line 135
    return-void
.end method

.method public onConferenceMergedFailed()V
    .locals 0

    .line 139
    return-void
.end method

.method public onConferenceParticipantsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(I)V
    .locals 0
    .param p1, "capability"    # I

    .line 124
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method public onDisconnect(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 155
    return-void
.end method

.method public onExitedEcmMode()V
    .locals 0

    .line 143
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 141
    return-void
.end method

.method public onHandoverToWifiFailed()V
    .locals 0

    .line 147
    return-void
.end method

.method public onMultipartyStateChanged(Z)V
    .locals 0
    .param p1, "isMultiParty"    # Z

    .line 137
    return-void
.end method

.method public onRttInitiated()V
    .locals 0

    .line 157
    return-void
.end method

.method public onRttModifyRequestReceived()V
    .locals 0

    .line 151
    return-void
.end method

.method public onRttModifyResponseReceived(I)V
    .locals 0
    .param p1, "status"    # I

    .line 153
    return-void
.end method

.method public onRttTerminated()V
    .locals 0

    .line 159
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 129
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 0
    .param p1, "videoState"    # I

    .line 122
    return-void
.end method

.method public onWifiChanged(Z)V
    .locals 0
    .param p1, "isWifi"    # Z

    .line 126
    return-void
.end method

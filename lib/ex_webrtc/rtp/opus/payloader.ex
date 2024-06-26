defmodule ExWebRTC.RTP.Opus.Payloader do
  @moduledoc """
  Encapsulates Opus audio packet into an RTP packet.

  Based on [RFC 7587: RTP Payload Format for the Opus Speech and Audio Codec](https://datatracker.ietf.org/doc/html/rfc7587).
  """

  @doc """
  Packs Opus packet into an RTP packet.

  Fields from RTP header like ssrc, timestamp etc. are set to 0.
  """
  @spec payload(binary()) :: ExRTP.Packet.t()
  def payload(packet) when packet != <<>> do
    ExRTP.Packet.new(packet)
  end
end

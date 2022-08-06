#include "HtmlBuilder/Includes/Element.hpp"

namespace Html
{
  Element::Element() noexcept
    : m_TagVoid{ false }
  {
  }

  Element::Element(const std::string_view tag_name, const std::string_view tag_content) noexcept
    : m_TagName{ tag_name }
    , m_TagContent{ tag_content }
    , m_TagVoid{ false }
  {
  }

  Element&& Element::AddAttribute(const std::string_view name, const std::string_view value) noexcept
  {
    m_Children.emplace_back(name, value);
    return std::move(*this);
  }

  Element&& Element::AddAttribute(const std::string_view name, const uint64_t value) noexcept
  {
    m_Children.emplace_back(name, std::to_string(value));
    return std::move(*this);
  }

  Element&& Element::operator<<(Element&& element)
  {
    m_Children.emplace_back(std::move(element));
    return std::move(*this);
  }

  std::ostream& Element::ToString(std::ostream& stream, const size_t indentation) const noexcept
  {
    StringOpen(stream, indentation);
    StringContent(stream, indentation);
    StringClose(stream, indentation);
    return stream;
  }

  void Element::StringOpen([[maybe_unused]] std::ostream& stream, [[maybe_unused]] const size_t indentation) const noexcept
  {
  }

  void Element::StringContent([[maybe_unused]] std::ostream& stream, [[maybe_unused]] const size_t indentation) const noexcept
  {
  }

  void Element::StringClose([[maybe_unused]] std::ostream& stream, [[maybe_unused]] const size_t indentation) const noexcept
  {
  }
} // namespace Html